.class public final Lo/ListInstrument$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ListInstrument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/Event;

.field public final extraCallback:Z

.field public final onMessageChannelReady:Z


# direct methods
.method public constructor <init>(Lo/Event;ZZ)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lo/ListInstrument$onMessageChannelReady;->ICustomTabsCallback:Lo/Event;

    .line 56
    iput-boolean p2, p0, Lo/ListInstrument$onMessageChannelReady;->onMessageChannelReady:Z

    .line 57
    iput-boolean p3, p0, Lo/ListInstrument$onMessageChannelReady;->extraCallback:Z

    return-void
.end method
