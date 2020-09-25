.class public final Lo/onUncaughtException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/FirebaseAuth$ICustomTabsCallback;

.field private final synthetic zzb:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseAuth$ICustomTabsCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/onUncaughtException;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p2, p0, Lo/onUncaughtException;->zza:Lcom/google/firebase/auth/FirebaseAuth$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/onUncaughtException;->zza:Lcom/google/firebase/auth/FirebaseAuth$ICustomTabsCallback;

    iget-object v1, p0, Lo/onUncaughtException;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-interface {v0, v1}, Lcom/google/firebase/auth/FirebaseAuth$ICustomTabsCallback;->onIdTokenChanged(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-void
.end method
