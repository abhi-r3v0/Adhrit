.class public final synthetic Lo/parseEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/parseEventExecution$onPostMessage;


# instance fields
.field private final arg$1:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/parseEvent;->arg$1:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lo/parseEvent;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lo/parseEvent;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lo/parseEvent;->arg$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final start()Lcom/google/android/gms/tasks/Task;
    .locals 4

    iget-object v0, p0, Lo/parseEvent;->arg$1:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, Lo/parseEvent;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lo/parseEvent;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lo/parseEvent;->arg$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->lambda$getInstanceId$2$FirebaseInstanceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
