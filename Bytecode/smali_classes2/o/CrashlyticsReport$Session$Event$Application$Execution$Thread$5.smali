.class final Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsReport$Session$OperatingSystem$Builder$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;Lo/setCores;Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;


# direct methods
.method constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$5;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose(Lo/emptyMap;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$5;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->access$200(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;Lo/emptyMap;)V

    return-void
.end method

.method public final onOpen()V
    .locals 1

    .line 171
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$5;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->access$000(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;)V

    return-void
.end method

.method public final onWatchChange(Lo/withNdkPayload;Lo/CrashlyticsReport$Session$OperatingSystem;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$5;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-static {v0, p1, p2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->access$100(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;Lo/withNdkPayload;Lo/CrashlyticsReport$Session$OperatingSystem;)V

    return-void
.end method
