.class public Lcom/google/firebase/auth/FirebaseAuthMultiFactorException;
.super Lcom/google/firebase/auth/FirebaseAuthException;
.source ""


# instance fields
.field private zza:Lo/isAppDebuggable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lo/isAppDebuggable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/auth/FirebaseAuthException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p3, p0, Lcom/google/firebase/auth/FirebaseAuthMultiFactorException;->zza:Lo/isAppDebuggable;

    return-void
.end method


# virtual methods
.method public getResolver()Lo/isAppDebuggable;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuthMultiFactorException;->zza:Lo/isAppDebuggable;

    return-object v0
.end method
