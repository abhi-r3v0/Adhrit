.class public abstract Lo/drawSelectorCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/drawSelectorCompat$extraCallback;,
        Lo/drawSelectorCompat$onPostMessage;,
        Lo/drawSelectorCompat$onMessageChannelReady;,
        Lo/drawSelectorCompat$ICustomTabsCallback;,
        Lo/drawSelectorCompat$onNavigationEvent;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/drawSelectorCompat;

.field public static final asBinder:Lo/setInternalImageTint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setInternalImageTint<",
            "Lo/drawSelectorCompat;",
            ">;"
        }
    .end annotation
.end field

.field public static final extraCallback:Lo/drawSelectorCompat;

.field public static final onMessageChannelReady:Lo/drawSelectorCompat;

.field public static final onNavigationEvent:Lo/drawSelectorCompat;

.field public static final onPostMessage:Lo/drawSelectorCompat;

.field static final onRelationshipValidationResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lo/drawSelectorCompat$onNavigationEvent;

    invoke-direct {v0}, Lo/drawSelectorCompat$onNavigationEvent;-><init>()V

    sput-object v0, Lo/drawSelectorCompat;->extraCallback:Lo/drawSelectorCompat;

    .line 67
    new-instance v0, Lo/drawSelectorCompat$onPostMessage;

    invoke-direct {v0}, Lo/drawSelectorCompat$onPostMessage;-><init>()V

    sput-object v0, Lo/drawSelectorCompat;->ICustomTabsCallback:Lo/drawSelectorCompat;

    .line 81
    new-instance v0, Lo/drawSelectorCompat$ICustomTabsCallback;

    invoke-direct {v0}, Lo/drawSelectorCompat$ICustomTabsCallback;-><init>()V

    sput-object v0, Lo/drawSelectorCompat;->onNavigationEvent:Lo/drawSelectorCompat;

    .line 84
    new-instance v0, Lo/drawSelectorCompat$onMessageChannelReady;

    invoke-direct {v0}, Lo/drawSelectorCompat$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/drawSelectorCompat;->onPostMessage:Lo/drawSelectorCompat;

    .line 87
    sget-object v0, Lo/drawSelectorCompat;->onNavigationEvent:Lo/drawSelectorCompat;

    sput-object v0, Lo/drawSelectorCompat;->onMessageChannelReady:Lo/drawSelectorCompat;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    .line 97
    invoke-static {v1, v0}, Lo/setInternalImageTint;->onPostMessage(Ljava/lang/String;Ljava/lang/Object;)Lo/setInternalImageTint;

    move-result-object v0

    sput-object v0, Lo/drawSelectorCompat;->asBinder:Lo/setInternalImageTint;

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lo/drawSelectorCompat;->onRelationshipValidationResult:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onNavigationEvent(IIII)Lo/drawSelectorCompat$extraCallback;
.end method

.method public abstract onPostMessage(IIII)F
.end method
