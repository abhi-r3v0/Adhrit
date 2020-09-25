.class public final Lo/t$3$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/t$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

.field public final asBinder:J

.field public final asInterface:J

.field public final extraCallback:I

.field public final onMessageChannelReady:J

.field public final onNavigationEvent:J

.field public final onPostMessage:Lo/t;


# direct methods
.method public constructor <init>(JLo/t;ILo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-wide p1, p0, Lo/t$3$extraCallback;->onMessageChannelReady:J

    .line 116
    iput-object p3, p0, Lo/t$3$extraCallback;->onPostMessage:Lo/t;

    .line 117
    iput p4, p0, Lo/t$3$extraCallback;->extraCallback:I

    .line 118
    iput-object p5, p0, Lo/t$3$extraCallback;->ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 119
    iput-wide p6, p0, Lo/t$3$extraCallback;->onNavigationEvent:J

    .line 120
    iput-wide p8, p0, Lo/t$3$extraCallback;->asBinder:J

    .line 121
    iput-wide p10, p0, Lo/t$3$extraCallback;->asInterface:J

    return-void
.end method
