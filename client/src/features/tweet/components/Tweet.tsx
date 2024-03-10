import type { Tweet as TweetType } from "../types";

type Props = {
 tweet: TweetType;
}

export const Tweet: React.FC<Props> = ({ tweet }) => {
 return (
  <div>
   <p>{tweet.content}</p>
  </div>
 );
}