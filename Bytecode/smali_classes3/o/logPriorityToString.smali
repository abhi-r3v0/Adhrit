.class public Lo/logPriorityToString;
.super Lo/getDeviceState;
.source ""


# instance fields
.field private final zza:Lo/flushOrLog;


# direct methods
.method public constructor <init>(Lo/flushOrLog;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/getDeviceState;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lo/logPriorityToString;->zza:Lo/flushOrLog;

    return-void

    .line 1002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getFactorId()Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    return-object v0
.end method

.method public final zza()Lo/flushOrLog;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/logPriorityToString;->zza:Lo/flushOrLog;

    return-object v0
.end method
