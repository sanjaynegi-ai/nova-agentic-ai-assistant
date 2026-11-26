create extension if not exists vector with schema extensions;
create table if not exists public.documents (id bigserial primary key, content text, metadata jsonb, embedding extensions.vector(1536));
alter table public.documents enable row level security;
create or replace function public.match_documents(query_embedding extensions.vector(1536), match_count int default 5, filter jsonb default '{}') returns table(id bigint, content text, metadata jsonb, similarity float) language sql stable set search_path=public,extensions as $$ select d.id,d.content,d.metadata,1-(d.embedding <=> query_embedding) from public.documents d where d.metadata @> filter order by d.embedding <=> query_embedding limit greatest(0,least(match_count,10)); $$;
revoke execute on function public.match_documents from public,anon,authenticated;
grant execute on function public.match_documents to service_role;
