.class public final Lo/FirebaseCrashlyticsNdk$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FirebaseCrashlyticsNdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field final onMessageChannelReady:Ljava/lang/String;

.field final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lo/FirebaseCrashlyticsNdk$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lo/FirebaseCrashlyticsNdk$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method
