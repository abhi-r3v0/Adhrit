.class public final synthetic Lo/asFilePayload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/access$lambda$4;


# instance fields
.field private final arg$1:Lcom/google/firebase/FirebaseApp;

.field private final arg$2:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/asFilePayload;->arg$1:Lcom/google/firebase/FirebaseApp;

    iput-object p2, p0, Lo/asFilePayload;->arg$2:Landroid/content/Context;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/FirebaseApp;Landroid/content/Context;)Lo/access$lambda$4;
    .locals 1

    new-instance v0, Lo/asFilePayload;

    invoke-direct {v0, p0, p1}, Lo/asFilePayload;-><init>(Lcom/google/firebase/FirebaseApp;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo/asFilePayload;->arg$1:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lo/asFilePayload;->arg$2:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/firebase/FirebaseApp;->lambda$new$0(Lcom/google/firebase/FirebaseApp;Landroid/content/Context;)Lo/generateBinaryImagesJsonString;

    move-result-object v0

    return-object v0
.end method
