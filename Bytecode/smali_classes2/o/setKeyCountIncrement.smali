.class public final Lo/setKeyCountIncrement;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static extraCallback:Lo/CustomEventBanner;

.field private static final onMessageChannelReady:Lo/CustomEventBanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2
    new-instance v0, Lo/KeysExpiredException;

    invoke-direct {v0}, Lo/KeysExpiredException;-><init>()V

    .line 3
    sput-object v0, Lo/setKeyCountIncrement;->onMessageChannelReady:Lo/CustomEventBanner;

    sput-object v0, Lo/setKeyCountIncrement;->extraCallback:Lo/CustomEventBanner;

    return-void
.end method

.method static synthetic extraCallback()Lo/CustomEventBanner;
    .locals 1

    .line 1
    sget-object v0, Lo/setKeyCountIncrement;->extraCallback:Lo/CustomEventBanner;

    return-object v0
.end method
