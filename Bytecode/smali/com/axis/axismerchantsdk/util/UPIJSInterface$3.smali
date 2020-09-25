.class Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/axis/axismerchantsdk/util/UPIJSInterface;->downloadFile(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Ljava/lang/String;

.field final synthetic extraCallback:Z

.field final synthetic onMessageChannelReady:Ljava/lang/String;

.field final synthetic onNavigationEvent:Lcom/axis/axismerchantsdk/util/UPIJSInterface;


# direct methods
.method constructor <init>(Lcom/axis/axismerchantsdk/util/UPIJSInterface;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;->onNavigationEvent:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    iput-object p2, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;->onMessageChannelReady:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;->extraCallback:Z

    iput-object p4, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 501
    new-instance v0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3$1;

    invoke-direct {v0, p0}, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3$1;-><init>(Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 521
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
