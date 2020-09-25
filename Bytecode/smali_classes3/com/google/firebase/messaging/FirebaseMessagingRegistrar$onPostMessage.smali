.class public final Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppsFlyerProperties$EmailsCryptType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTransport(Ljava/lang/String;Ljava/lang/Class;Lo/getReferrer;)Lo/loadProperties;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/getReferrer<",
            "TT;[B>;)",
            "Lo/loadProperties<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance p1, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$onNavigationEvent;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$onNavigationEvent;-><init>(Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$3;)V

    return-object p1
.end method

.method public final getTransport(Ljava/lang/String;Ljava/lang/Class;Lo/isEnableLog;Lo/getReferrer;)Lo/loadProperties;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/isEnableLog;",
            "Lo/getReferrer<",
            "TT;[B>;)",
            "Lo/loadProperties<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance p1, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$onNavigationEvent;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$onNavigationEvent;-><init>(Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$3;)V

    return-object p1
.end method
