.class public final Lo/setVerticalOffset;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setVerticalOffset$onPostMessage;,
        Lo/setVerticalOffset$onNavigationEvent;,
        Lo/setVerticalOffset$onMessageChannelReady;,
        Lo/setVerticalOffset$extraCallback;
    }
.end annotation


# static fields
.field private static final extraCallback:Lo/setVerticalOffset$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setVerticalOffset$onMessageChannelReady<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lo/setVerticalOffset$5;

    invoke-direct {v0}, Lo/setVerticalOffset$5;-><init>()V

    sput-object v0, Lo/setVerticalOffset;->extraCallback:Lo/setVerticalOffset$onMessageChannelReady;

    return-void
.end method

.method public static onMessageChannelReady()Lo/RatingCompat$StarStyle$extraCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 3086
    new-instance v0, Lo/RatingCompat$StarStyle$onMessageChannelReady;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lo/RatingCompat$StarStyle$onMessageChannelReady;-><init>(I)V

    new-instance v1, Lo/setVerticalOffset$4;

    invoke-direct {v1}, Lo/setVerticalOffset$4;-><init>()V

    new-instance v2, Lo/setVerticalOffset$3;

    invoke-direct {v2}, Lo/setVerticalOffset$3;-><init>()V

    .line 3112
    new-instance v3, Lo/setVerticalOffset$onPostMessage;

    invoke-direct {v3, v0, v1, v2}, Lo/setVerticalOffset$onPostMessage;-><init>(Lo/RatingCompat$StarStyle$extraCallback;Lo/setVerticalOffset$extraCallback;Lo/setVerticalOffset$onMessageChannelReady;)V

    return-object v3
.end method

.method public static onNavigationEvent(ILo/setVerticalOffset$extraCallback;)Lo/RatingCompat$StarStyle$extraCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo/setVerticalOffset$onNavigationEvent;",
            ">(I",
            "Lo/setVerticalOffset$extraCallback<",
            "TT;>;)",
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "TT;>;"
        }
    .end annotation

    .line 56
    new-instance v0, Lo/RatingCompat$StarStyle$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/RatingCompat$StarStyle$onMessageChannelReady;-><init>(I)V

    .line 1118
    sget-object p0, Lo/setVerticalOffset;->extraCallback:Lo/setVerticalOffset$onMessageChannelReady;

    .line 2112
    new-instance v1, Lo/setVerticalOffset$onPostMessage;

    invoke-direct {v1, v0, p1, p0}, Lo/setVerticalOffset$onPostMessage;-><init>(Lo/RatingCompat$StarStyle$extraCallback;Lo/setVerticalOffset$extraCallback;Lo/setVerticalOffset$onMessageChannelReady;)V

    return-object v1
.end method
