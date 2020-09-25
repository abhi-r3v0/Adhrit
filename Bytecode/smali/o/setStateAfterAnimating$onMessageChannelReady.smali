.class final Lo/setStateAfterAnimating$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setStateAfterAnimating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/graphics/drawable/Drawable;",
        "Lo/addWrites;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "invoke",
        "com/dreamplug/fabrik/ui/cm/credprotect/CredProtectOptInViewModel$setCardBackgroundColor$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/setStateAfterAnimating;


# direct methods
.method constructor <init>(Lo/setStateAfterAnimating;)V
    .locals 0

    iput-object p1, p0, Lo/setStateAfterAnimating$onMessageChannelReady;->onNavigationEvent:Lo/setStateAfterAnimating;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 38
    check-cast p1, Landroid/graphics/drawable/Drawable;

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1222
    iget-object v0, p0, Lo/setStateAfterAnimating$onMessageChannelReady;->onNavigationEvent:Lo/setStateAfterAnimating;

    .line 2066
    iget-object v0, v0, Lo/setStateAfterAnimating;->mayLaunchUrl:Lo/getMediaController;

    .line 2090
    iget-object v1, v0, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    if-eq p1, v1, :cond_0

    .line 2091
    iput-object p1, v0, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 2092
    invoke-virtual {v0}, Lo/rewind;->onPostMessage()V

    .line 38
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
