.class public abstract Lo/getUnmodifiedPayloads;
.super Lo/isAttachedToTransitionOverlay;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getUnmodifiedPayloads$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dreamplug/ui/neu/internals/PitHelperInterface;",
        "Lcom/dreamplug/ui/neu/internals/BaseUiHelper;",
        "paintHelper",
        "Lcom/dreamplug/ui/neu/internals/PaintHelper;",
        "(Lcom/dreamplug/ui/neu/internals/PaintHelper;)V",
        "Companion",
        "uikit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/getUnmodifiedPayloads$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/getUnmodifiedPayloads$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getUnmodifiedPayloads$extraCallback;-><init>(B)V

    sput-object v0, Lo/getUnmodifiedPayloads;->ICustomTabsCallback:Lo/getUnmodifiedPayloads$extraCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/getUnmodifiedPayloads;-><init>(B)V

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    .line 7
    new-instance p1, Lo/performClickableSpanAction$onMessageChannelReady;

    invoke-direct {p1}, Lo/performClickableSpanAction$onMessageChannelReady;-><init>()V

    check-cast p1, Lo/MediaSessionCompat$1$onMessageChannelReady;

    invoke-direct {p0, p1}, Lo/getUnmodifiedPayloads;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;)V

    return-void
.end method

.method public constructor <init>(Lo/MediaSessionCompat$1$onMessageChannelReady;)V
    .locals 1

    const-string v0, "paintHelper"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lo/isAttachedToTransitionOverlay;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;)V

    return-void
.end method
