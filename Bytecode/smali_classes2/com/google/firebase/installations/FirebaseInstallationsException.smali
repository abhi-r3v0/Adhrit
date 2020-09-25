.class public Lcom/google/firebase/installations/FirebaseInstallationsException;
.super Lcom/google/firebase/FirebaseException;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final status:Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;


# direct methods
.method public constructor <init>(Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/firebase/FirebaseException;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/firebase/installations/FirebaseInstallationsException;->status:Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p2, p0, Lcom/google/firebase/installations/FirebaseInstallationsException;->status:Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;Ljava/lang/Throwable;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p3}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    iput-object p2, p0, Lcom/google/firebase/installations/FirebaseInstallationsException;->status:Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallationsException;->status:Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    return-object v0
.end method
