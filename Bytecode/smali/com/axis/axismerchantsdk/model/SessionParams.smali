.class public Lcom/axis/axismerchantsdk/model/SessionParams;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static onNavigationEvent:Lcom/axis/axismerchantsdk/model/SessionParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    sput-object v0, Lcom/axis/axismerchantsdk/model/SessionParams;->onNavigationEvent:Lcom/axis/axismerchantsdk/model/SessionParams;

    return-void
.end method

.method public static extraCallback()Lcom/axis/axismerchantsdk/model/SessionParams;
    .locals 1

    .line 39
    sget-object v0, Lcom/axis/axismerchantsdk/model/SessionParams;->onNavigationEvent:Lcom/axis/axismerchantsdk/model/SessionParams;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/axis/axismerchantsdk/model/SessionParams;

    invoke-direct {v0}, Lcom/axis/axismerchantsdk/model/SessionParams;-><init>()V

    sput-object v0, Lcom/axis/axismerchantsdk/model/SessionParams;->onNavigationEvent:Lcom/axis/axismerchantsdk/model/SessionParams;

    .line 42
    :cond_0
    sget-object v0, Lcom/axis/axismerchantsdk/model/SessionParams;->onNavigationEvent:Lcom/axis/axismerchantsdk/model/SessionParams;

    return-object v0
.end method
