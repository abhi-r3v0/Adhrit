.class public final Lo/getRootNode$onNavigationEvent;
.super Lo/getRootNode;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRootNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlin/random/Random$Companion;",
        "Lkotlin/random/Random;",
        "()V",
        "nextBits",
        "",
        "bitCount",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/getRootNode$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 272
    new-instance v0, Lo/getRootNode$onNavigationEvent;

    invoke-direct {v0}, Lo/getRootNode$onNavigationEvent;-><init>()V

    sput-object v0, Lo/getRootNode$onNavigationEvent;->onMessageChannelReady:Lo/getRootNode$onNavigationEvent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 272
    invoke-direct {p0}, Lo/getRootNode;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(I)I
    .locals 1

    .line 1244
    invoke-static {}, Lo/getRootNode;->onMessageChannelReady()Lo/getRootNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/getRootNode;->onPostMessage(I)I

    move-result p1

    return p1
.end method
