import { useQuery } from "@apollo/client";
import { FetchTweetsDocument, FetchTweetsQuery } from "../../../gql/graphql";
import { TweetView } from "./TweetView";

export const TweetList: React.FC = () => {
  const { data } = useQuery<FetchTweetsQuery>(FetchTweetsDocument);
  const tweets = data?.tweets || [];
  return (
    <TweetView tweets={tweets} />
  );
}