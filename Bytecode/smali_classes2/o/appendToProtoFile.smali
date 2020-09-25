.class public final Lo/appendToProtoFile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final zza:Lo/setCustomAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount<",
            "Lo/writeSessionPartFile;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lo/setCustomAmount$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onRelationshipValidationResult<",
            "Lo/finalizePreviousNativeSession;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lo/setCustomAmount$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onNavigationEvent<",
            "Lo/finalizePreviousNativeSession;",
            "Lo/writeSessionPartFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final arg$1:Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2
    new-instance v0, Lo/setCustomAmount$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/setCustomAmount$onRelationshipValidationResult;-><init>()V

    sput-object v0, Lo/appendToProtoFile;->zzb:Lo/setCustomAmount$onRelationshipValidationResult;

    .line 3
    new-instance v0, Lo/writeAppExceptionMarker;

    invoke-direct {v0}, Lo/writeAppExceptionMarker;-><init>()V

    sput-object v0, Lo/appendToProtoFile;->zzc:Lo/setCustomAmount$onNavigationEvent;

    .line 4
    new-instance v0, Lo/setCustomAmount;

    sget-object v1, Lo/appendToProtoFile;->zzc:Lo/setCustomAmount$onNavigationEvent;

    sget-object v2, Lo/appendToProtoFile;->zzb:Lo/setCustomAmount$onRelationshipValidationResult;

    const-string v3, "InternalFirebaseAuth.FIREBASE_AUTH_API"

    invoke-direct {v0, v3, v1, v2}, Lo/setCustomAmount;-><init>(Ljava/lang/String;Lo/setCustomAmount$onNavigationEvent;Lo/setCustomAmount$onRelationshipValidationResult;)V

    sput-object v0, Lo/appendToProtoFile;->zza:Lo/setCustomAmount;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/appendToProtoFile;->arg$1:Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;

    return-void
.end method

.method public static zza(Landroid/content/Context;Lo/writeSessionPartFile;)Lo/CommonUtils$Architecture;
    .locals 1

    .line 1
    new-instance v0, Lo/CommonUtils$Architecture;

    invoke-direct {v0, p0, p1}, Lo/CommonUtils$Architecture;-><init>(Landroid/content/Context;Lo/writeSessionPartFile;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/appendToProtoFile;->arg$1:Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;

    invoke-virtual {v0}, Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;->lambda$onServiceDisconnected$3$MessengerIpcClient$Connection()V

    return-void
.end method
