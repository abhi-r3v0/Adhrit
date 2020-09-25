.class public Lo/copyStream;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/copyStream$onMessageChannelReady;,
        Lo/copyStream$extraCallback;
    }
.end annotation


# static fields
.field public static final PHONE_SIGN_IN_METHOD:Ljava/lang/String; = "phone"

.field public static final PROVIDER_ID:Ljava/lang/String; = "phone"


# instance fields
.field private zza:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method private constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/copyStream;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    return-void
.end method

.method public static getCredential(Ljava/lang/String;Ljava/lang/String;)Lo/flushOrLog;
    .locals 0

    .line 35
    invoke-static {p0, p1}, Lo/flushOrLog;->zza(Ljava/lang/String;Ljava/lang/String;)Lo/flushOrLog;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lo/copyStream;
    .locals 2

    .line 5
    new-instance v0, Lo/copyStream;

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/copyStream;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/auth/FirebaseAuth;)Lo/copyStream;
    .locals 1

    .line 4
    new-instance v0, Lo/copyStream;

    invoke-direct {v0, p0}, Lo/copyStream;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-object v0
.end method

.method public static verifyPhoneNumber(Lo/isNullOrEmpty;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 31
    invoke-static {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lo/isNullOrEmpty;)V

    return-void

    .line 10002
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zza(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Ljava/util/concurrent/Executor;Lo/copyStream$extraCallback;Lo/copyStream$onMessageChannelReady;)V
    .locals 11

    move-object v0, p0

    .line 33
    iget-object v1, v0, Lo/copyStream;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    if-eqz p8, :cond_0

    const/4 v2, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object/from16 v6, p7

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v10}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Lo/copyStream$extraCallback;Landroid/app/Activity;Ljava/util/concurrent/Executor;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public verifyPhoneNumber(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Lo/copyStream$extraCallback;)V
    .locals 10

    .line 1004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "null reference"

    if-eqz p5, :cond_1

    .line 8
    move-object v6, p5

    check-cast v6, Landroid/app/Activity;

    sget-object v7, Lo/initializeAllApis;->onNavigationEvent:Ljava/util/concurrent/Executor;

    if-eqz p6, :cond_0

    .line 9
    move-object/from16 v8, p6

    check-cast v8, Lo/copyStream$extraCallback;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    .line 10
    invoke-direct/range {v1 .. v9}, Lo/copyStream;->zza(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Ljava/util/concurrent/Executor;Lo/copyStream$extraCallback;Lo/copyStream$onMessageChannelReady;)V

    return-void

    .line 3002
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2002
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1005
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given String is empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyPhoneNumber(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Lo/copyStream$extraCallback;Lo/copyStream$onMessageChannelReady;)V
    .locals 10

    .line 5004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "null reference"

    if-eqz p5, :cond_1

    .line 20
    move-object v6, p5

    check-cast v6, Landroid/app/Activity;

    sget-object v7, Lo/initializeAllApis;->onNavigationEvent:Ljava/util/concurrent/Executor;

    if-eqz p6, :cond_0

    .line 21
    move-object/from16 v8, p6

    check-cast v8, Lo/copyStream$extraCallback;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object/from16 v9, p7

    .line 22
    invoke-direct/range {v1 .. v9}, Lo/copyStream;->zza(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Ljava/util/concurrent/Executor;Lo/copyStream$extraCallback;Lo/copyStream$onMessageChannelReady;)V

    return-void

    .line 7002
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6002
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5005
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given String is empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyPhoneNumber(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;Lo/copyStream$extraCallback;)V
    .locals 10

    .line 3004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v6, 0x0

    const-string v0, "null reference"

    if-eqz p5, :cond_1

    .line 14
    move-object v7, p5

    check-cast v7, Ljava/util/concurrent/Executor;

    if-eqz p6, :cond_0

    .line 15
    move-object/from16 v8, p6

    check-cast v8, Lo/copyStream$extraCallback;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    .line 16
    invoke-direct/range {v1 .. v9}, Lo/copyStream;->zza(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Ljava/util/concurrent/Executor;Lo/copyStream$extraCallback;Lo/copyStream$onMessageChannelReady;)V

    return-void

    .line 5002
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4002
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3005
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given String is empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyPhoneNumber(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;Lo/copyStream$extraCallback;Lo/copyStream$onMessageChannelReady;)V
    .locals 10

    .line 7004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v6, 0x0

    const-string v0, "null reference"

    if-eqz p5, :cond_1

    .line 26
    move-object v7, p5

    check-cast v7, Ljava/util/concurrent/Executor;

    if-eqz p6, :cond_0

    .line 27
    move-object/from16 v8, p6

    check-cast v8, Lo/copyStream$extraCallback;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object/from16 v9, p7

    .line 28
    invoke-direct/range {v1 .. v9}, Lo/copyStream;->zza(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Ljava/util/concurrent/Executor;Lo/copyStream$extraCallback;Lo/copyStream$onMessageChannelReady;)V

    return-void

    .line 9002
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8002
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7005
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given String is empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
