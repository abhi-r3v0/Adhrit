.class public final enum Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$ServiceBinderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;

.field private static enum onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;

.field public static final enum onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 46
    new-instance v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "RELAXED"

    invoke-direct {v0, v2, v1}, Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;

    new-instance v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "STRICT"

    invoke-direct {v0, v3, v2}, Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;

    sget-object v4, Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;->ICustomTabsCallback:[Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;
    .locals 1

    .line 46
    const-class v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;
    .locals 1

    .line 46
    sget-object v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;->ICustomTabsCallback:[Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;

    invoke-virtual {v0}, [Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;

    return-object v0
.end method
