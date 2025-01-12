.class public Lcom/intlgame/api/friend/INTLFriend;
.super Ljava/lang/Object;
.source "INTLFriend.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native queryFriends(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native sendMessage(Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V
.end method

.method public static native setFriendObserver(Lcom/intlgame/api/friend/INTLFriendObserver;)V
.end method

.method public static native share(Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V
.end method
