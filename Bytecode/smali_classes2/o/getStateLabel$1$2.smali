.class final Lo/getStateLabel$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getStateLabel$1;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/getStateLabel$1;

.field final synthetic extraCallback:Ljava/lang/String;

.field final synthetic onNavigationEvent:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lo/getStateLabel$1;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lo/getStateLabel$1$2;->ICustomTabsCallback:Lo/getStateLabel$1;

    iput-object p2, p0, Lo/getStateLabel$1$2;->extraCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/getStateLabel$1$2;->onNavigationEvent:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    return-void
.end method
