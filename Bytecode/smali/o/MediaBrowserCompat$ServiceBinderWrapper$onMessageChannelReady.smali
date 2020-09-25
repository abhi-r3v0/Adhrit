.class public final enum Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$ServiceBinderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static enum ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

.field public static final enum extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

.field public static final enum onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

.field private static final synthetic onPostMessage:[Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 41
    new-instance v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    new-instance v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "STRONG"

    invoke-direct {v0, v3, v2}, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    new-instance v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "WEAK"

    invoke-direct {v0, v4, v3}, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    sget-object v5, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    aput-object v5, v4, v1

    sget-object v1, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->onPostMessage:[Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;
    .locals 1

    .line 41
    const-class v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;
    .locals 1

    .line 41
    sget-object v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->onPostMessage:[Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    return-object v0
.end method
