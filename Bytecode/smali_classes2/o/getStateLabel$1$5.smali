.class final Lo/getStateLabel$1$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getStateLabel$1;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroid/os/Bundle;

.field final synthetic extraCallback:Landroid/net/Uri;

.field final synthetic onMessageChannelReady:Z

.field final synthetic onNavigationEvent:I

.field final synthetic onPostMessage:Lo/getStateLabel$1;


# direct methods
.method constructor <init>(Lo/getStateLabel$1;ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lo/getStateLabel$1$5;->onPostMessage:Lo/getStateLabel$1;

    iput p2, p0, Lo/getStateLabel$1$5;->onNavigationEvent:I

    iput-object p3, p0, Lo/getStateLabel$1$5;->extraCallback:Landroid/net/Uri;

    iput-boolean p4, p0, Lo/getStateLabel$1$5;->onMessageChannelReady:Z

    iput-object p5, p0, Lo/getStateLabel$1$5;->ICustomTabsCallback:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    return-void
.end method
