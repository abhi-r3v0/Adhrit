.class final Lo/getTrackTintMode$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTrackTintMode;->ICustomTabsCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/getTrackTintMode$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getTrackTintMode$extraCallback;

    invoke-direct {v0}, Lo/getTrackTintMode$extraCallback;-><init>()V

    sput-object v0, Lo/getTrackTintMode$extraCallback;->ICustomTabsCallback:Lo/getTrackTintMode$extraCallback;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 307
    sget-object v0, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {v0}, Lo/getTrackTintMode;->ICustomTabsCallback(Lo/getTrackTintMode;)Lo/Settings;

    move-result-object v0

    .line 2350
    iget-object v1, v0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v2, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1894
    iget-object v1, v0, Lo/Settings;->onNavigationEvent:Lo/buildInstanceIdentifierChanged;

    new-instance v2, Lo/buildInstanceIdentifierChanged$extraCallback;

    iget-object v0, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-direct {v2, v0}, Lo/buildInstanceIdentifierChanged$extraCallback;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lo/buildInstanceIdentifierChanged;->onNavigationEvent(Lo/buildInstanceIdentifierChanged$extraCallback;)V

    :cond_0
    return-void
.end method
