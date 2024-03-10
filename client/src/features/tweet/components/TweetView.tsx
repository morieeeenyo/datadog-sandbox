import { Tweet as TweetType } from "../types";
import { Tweet } from "./Tweet";

type Props = {
 tweets: TweetType[];
}

export const TweetView: React.FC<Props> = ({ tweets }) => {
 return (
  <div>
   {tweets.map((tweet) => (
    <Tweet key={tweet.id} tweet={tweet} />
   ))}
  </div>
 )
}