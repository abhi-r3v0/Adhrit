.class public final Lo/RedeemRequestModelJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/RedeemAssociateRequestModelJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method
