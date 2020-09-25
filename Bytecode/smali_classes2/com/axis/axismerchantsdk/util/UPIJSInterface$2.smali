.class Lcom/axis/axismerchantsdk/util/UPIJSInterface$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/axis/axismerchantsdk/util/UPIJSInterface;->endTransaction(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$2;->ICustomTabsCallback:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$2;->ICustomTabsCallback:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/axis/axismerchantsdk/util/Util;->extraCallback(Lorg/json/JSONObject;)V

    return-void
.end method
