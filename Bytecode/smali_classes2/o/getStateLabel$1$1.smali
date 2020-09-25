.class final Lo/getStateLabel$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getStateLabel$1;->onNavigationEvent(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroid/os/Bundle;

.field final synthetic onNavigationEvent:Lo/getStateLabel$1;

.field final synthetic onPostMessage:I


# direct methods
.method constructor <init>(Lo/getStateLabel$1;ILandroid/os/Bundle;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lo/getStateLabel$1$1;->onNavigationEvent:Lo/getStateLabel$1;

    iput p2, p0, Lo/getStateLabel$1$1;->onPostMessage:I

    iput-object p3, p0, Lo/getStateLabel$1$1;->ICustomTabsCallback:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    return-void
.end method
