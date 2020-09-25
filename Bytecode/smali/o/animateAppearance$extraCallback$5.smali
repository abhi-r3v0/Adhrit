.class final Lo/animateAppearance$extraCallback$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/animateAppearance$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/nextTransactionOrder<",
        "Ljava/lang/String;",
        "Ljava/lang/Throwable;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "",
        "<anonymous parameter 1>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/animateAppearance$extraCallback;


# direct methods
.method constructor <init>(Lo/animateAppearance$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lo/animateAppearance$extraCallback$5;->onPostMessage:Lo/animateAppearance$extraCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1168
    iget-object p1, p0, Lo/animateAppearance$extraCallback$5;->onPostMessage:Lo/animateAppearance$extraCallback;

    iget-object p1, p1, Lo/animateAppearance$extraCallback;->onMessageChannelReady:Lo/animateAppearance;

    iget-object p2, p0, Lo/animateAppearance$extraCallback$5;->onPostMessage:Lo/animateAppearance$extraCallback;

    iget-object p2, p2, Lo/animateAppearance$extraCallback;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p2}, Lo/animateAppearance;->onPostMessage(Lo/animateAppearance;Landroid/graphics/drawable/Drawable;)V

    .line 49
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
