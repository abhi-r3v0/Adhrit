.class final Lo/createVoiceWebSearchIntent$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createVoiceWebSearchIntent;-><init>(Ljava/lang/String;Lo/onDisconnectSetValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/os/Handler;",
        "Lo/inflate$onPostMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/datadog/android/core/internal/threading/AndroidDeferredHandler;",
        "handler",
        "Landroid/os/Handler;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/createVoiceWebSearchIntent$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/createVoiceWebSearchIntent$3;

    invoke-direct {v0}, Lo/createVoiceWebSearchIntent$3;-><init>()V

    sput-object v0, Lo/createVoiceWebSearchIntent$3;->onMessageChannelReady:Lo/createVoiceWebSearchIntent$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 11
    check-cast p1, Landroid/os/Handler;

    const-string v0, "handler"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1015
    new-instance v0, Lo/inflate$onPostMessage;

    invoke-direct {v0, p1}, Lo/inflate$onPostMessage;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
