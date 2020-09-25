.class final Lo/getIOSBundleId$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getIOSBundleId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getIOSBundleId;


# direct methods
.method constructor <init>(Lo/getIOSBundleId;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lo/getIOSBundleId$1;->onNavigationEvent:Lo/getIOSBundleId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 350
    iget-object p1, p0, Lo/getIOSBundleId$1;->onNavigationEvent:Lo/getIOSBundleId;

    .line 1056
    iget-object p1, p1, Lo/getIOSBundleId;->onPostMessage:Lo/addIdTokenListener;

    .line 350
    invoke-virtual {p1}, Lo/addIdTokenListener;->toggle()V

    .line 351
    iget-object p1, p0, Lo/getIOSBundleId$1;->onNavigationEvent:Lo/getIOSBundleId;

    .line 2056
    iget-object v0, p1, Lo/getIOSBundleId;->onPostMessage:Lo/addIdTokenListener;

    .line 3056
    invoke-virtual {p1, v0}, Lo/getIOSBundleId;->onNavigationEvent(Lo/addIdTokenListener;)V

    .line 352
    iget-object p1, p0, Lo/getIOSBundleId$1;->onNavigationEvent:Lo/getIOSBundleId;

    .line 4056
    invoke-virtual {p1}, Lo/getIOSBundleId;->asInterface()V

    return-void
.end method
