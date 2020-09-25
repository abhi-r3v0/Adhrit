.class public Lcom/google/firebase/firestore/FirebaseFirestoreException;
.super Lcom/google/firebase/FirebaseException;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;
    }
.end annotation


# instance fields
.field private final code:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;)V
    .locals 2

    .line 145
    invoke-direct {p0, p1}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    const-string v0, "Provided message must not be null."

    .line 146
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object p1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->OK:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/4 v0, 0x0

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "A FirebaseFirestoreException should never be thrown for OK"

    invoke-static {p1, v1, v0}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "Provided code must not be null."

    .line 149
    invoke-static {p2, p1}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    iput-object p1, p0, Lcom/google/firebase/firestore/FirebaseFirestoreException;->code:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;Ljava/lang/Throwable;)V
    .locals 1

    .line 154
    invoke-direct {p0, p1, p3}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p3, "Provided message must not be null."

    .line 155
    invoke-static {p1, p3}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object p1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->OK:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/4 p3, 0x0

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "A FirebaseFirestoreException should never be thrown for OK"

    invoke-static {p1, v0, p3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "Provided code must not be null."

    .line 158
    invoke-static {p2, p1}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    iput-object p1, p0, Lcom/google/firebase/firestore/FirebaseFirestoreException;->code:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    return-void
.end method


# virtual methods
.method public getCode()Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreException;->code:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    return-object v0
.end method
