.class public final Lo/v$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final asBinder:I

.field public final extraCallback:I

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:I

.field public final onPostMessage:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lo/v$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 93
    iput p2, p0, Lo/v$onPostMessage;->ICustomTabsCallback:I

    .line 94
    iput p3, p0, Lo/v$onPostMessage;->onNavigationEvent:I

    .line 95
    iput p4, p0, Lo/v$onPostMessage;->onPostMessage:I

    .line 96
    iput p5, p0, Lo/v$onPostMessage;->extraCallback:I

    .line 97
    iput p6, p0, Lo/v$onPostMessage;->asBinder:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIIILo/v$1;)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p6}, Lo/v$onPostMessage;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method
