.class final Lo/onSelected$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onSelected;-><init>()V
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


# instance fields
.field private synthetic extraCallback:Lo/onSelected;


# direct methods
.method constructor <init>(Lo/onSelected;)V
    .locals 0

    iput-object p1, p0, Lo/onSelected$warmup;->extraCallback:Lo/onSelected;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 156
    iget-object v0, p0, Lo/onSelected$warmup;->extraCallback:Lo/onSelected;

    invoke-static {v0}, Lo/onSelected;->onPostMessage(Lo/onSelected;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f130447

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lo/onSelected$warmup;->extraCallback:Lo/onSelected;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/onSelected;->onPostMessage(Lo/onSelected;Z)V

    return-void
.end method
