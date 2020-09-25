.class public final Lo/ak$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field final onMessageChannelReady:Ljava/lang/String;

.field final onPostMessage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    iput-object p1, p0, Lo/ak$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 578
    iput-object p2, p0, Lo/ak$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0

    .line 572
    invoke-direct {p0, p1, p2}, Lo/ak$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
