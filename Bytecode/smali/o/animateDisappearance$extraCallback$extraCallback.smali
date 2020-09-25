.class final Lo/animateDisappearance$extraCallback$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateDisappearance$extraCallback;-><init>(Landroid/content/Context;Landroid/view/View;Lo/onEnterLayoutOrScroll;Lo/getServerTime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/getServerTime<",
        "+",
        "Lo/addWrites;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Function0;",
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
.field final synthetic extraCallback:Lo/animateDisappearance$extraCallback;


# direct methods
.method constructor <init>(Lo/animateDisappearance$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lo/animateDisappearance$extraCallback$extraCallback;->extraCallback:Lo/animateDisappearance$extraCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1326
    new-instance v0, Lo/animateDisappearance$extraCallback$extraCallback$1;

    invoke-direct {v0, p0}, Lo/animateDisappearance$extraCallback$extraCallback$1;-><init>(Lo/animateDisappearance$extraCallback$extraCallback;)V

    check-cast v0, Lo/getServerTime;

    return-object v0
.end method
