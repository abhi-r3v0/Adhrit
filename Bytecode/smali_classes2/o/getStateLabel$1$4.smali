.class final Lo/getStateLabel$1$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getStateLabel$1;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/getStateLabel$1;

.field final synthetic extraCallback:Landroid/os/Bundle;

.field final synthetic onNavigationEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/getStateLabel$1;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lo/getStateLabel$1$4;->ICustomTabsCallback:Lo/getStateLabel$1;

    iput-object p2, p0, Lo/getStateLabel$1$4;->onNavigationEvent:Ljava/lang/String;

    iput-object p3, p0, Lo/getStateLabel$1$4;->extraCallback:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    return-void
.end method
