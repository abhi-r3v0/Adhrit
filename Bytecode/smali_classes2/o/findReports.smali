.class final Lo/findReports;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDefaultDefault;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 36
    check-cast p1, Lo/getEventAppExecutionSize;

    sget-object v0, Lo/getEventAppExecutionSize$asInterface;->extraCallback:Lo/getEventAppExecutionSize$asInterface;

    .line 37
    invoke-virtual {p1, v0}, Lo/getEventAppExecutionSize;->dynamicMethod(Lo/getEventAppExecutionSize$asInterface;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
