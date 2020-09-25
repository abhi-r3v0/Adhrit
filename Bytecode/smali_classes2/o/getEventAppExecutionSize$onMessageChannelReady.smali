.class public Lo/getEventAppExecutionSize$onMessageChannelReady;
.super Lo/writeSessionEventAppExecution;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getEventAppExecutionSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lo/WireFormat$FieldType$2;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lo/writeSessionEventAppExecution<",
        "TContainingType;TType;>;"
    }
.end annotation


# instance fields
.field final extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

.field final onMessageChannelReady:Lo/WireFormat$FieldType$2;


# direct methods
.method constructor <init>(Lo/WireFormat$FieldType$2;Lo/WireFormat$FieldType$2;Lo/getEventAppExecutionSize$ICustomTabsCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContainingType;",
            "Lo/WireFormat$FieldType$2;",
            "Lo/getEventAppExecutionSize$ICustomTabsCallback;",
            ")V"
        }
    .end annotation

    .line 1197
    invoke-direct {p0}, Lo/writeSessionEventAppExecution;-><init>()V

    if-eqz p1, :cond_2

    .line 2105
    iget-object p1, p3, Lo/getEventAppExecutionSize$ICustomTabsCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 1203
    sget-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->warmup:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1205
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1209
    :cond_1
    :goto_0
    iput-object p2, p0, Lo/getEventAppExecutionSize$onMessageChannelReady;->onMessageChannelReady:Lo/WireFormat$FieldType$2;

    .line 1210
    iput-object p3, p0, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    return-void

    .line 1201
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
