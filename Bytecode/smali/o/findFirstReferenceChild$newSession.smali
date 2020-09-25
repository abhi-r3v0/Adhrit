.class final Lo/findFirstReferenceChild$newSession;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findFirstReferenceChild;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/findFirstReferenceChild$newSession$1;",
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
        "\u0000\t\n\u0000\n\u0002\u0008\u0003*\u0001\u0001\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "com/dreamplug/fabrik/ui/lifestyle/compass/collection/LifestyleCollectionFragment$smoothScroller$2$1",
        "invoke",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/LifestyleCollectionFragment$smoothScroller$2$1;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/findFirstReferenceChild;


# direct methods
.method constructor <init>(Lo/findFirstReferenceChild;)V
    .locals 0

    iput-object p1, p0, Lo/findFirstReferenceChild$newSession;->extraCallback:Lo/findFirstReferenceChild;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1158
    new-instance v0, Lo/findFirstReferenceChild$newSession$1;

    iget-object v1, p0, Lo/findFirstReferenceChild$newSession;->extraCallback:Lo/findFirstReferenceChild;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/findFirstReferenceChild$newSession$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
