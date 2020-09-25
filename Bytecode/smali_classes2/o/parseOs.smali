.class public final synthetic Lo/parseOs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AutoCrashlyticsReportEncoder;


# instance fields
.field private final arg$1:Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/parseOs;->arg$1:Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;

    return-void
.end method


# virtual methods
.method public final handle(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;)V
    .locals 1

    iget-object v0, p0, Lo/parseOs;->arg$1:Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->lambda$initialize$0$FirebaseInstanceId$AutoInit(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;)V

    return-void
.end method
