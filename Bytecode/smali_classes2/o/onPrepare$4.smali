.class Lo/onPrepare$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onPrepare;->ICustomTabsCallback(Lo/onTransact$onNavigationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/onPrepare;


# direct methods
.method constructor <init>(Lo/onPrepare;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lo/onPrepare$4;->onNavigationEvent:Lo/onPrepare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/onPrepare$4;->onNavigationEvent:Lo/onPrepare;

    iput p2, v0, Lo/onPrepare;->extraCallback:I

    .line 93
    iget-object p2, p0, Lo/onPrepare$4;->onNavigationEvent:Lo/onPrepare;

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Lo/onPrepareFromMediaId;->onClick(Landroid/content/DialogInterface;I)V

    .line 95
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
