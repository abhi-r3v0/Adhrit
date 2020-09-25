.class final Lo/getRoot$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/getRoot;


# direct methods
.method constructor <init>(Lo/getRoot;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lo/getRoot$3;->extraCallback:Lo/getRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    .line 337
    iget-object v0, p0, Lo/getRoot$3;->extraCallback:Lo/getRoot;

    invoke-virtual {v0}, Lo/getRoot;->ICustomTabsCallback()V

    return-void
.end method
