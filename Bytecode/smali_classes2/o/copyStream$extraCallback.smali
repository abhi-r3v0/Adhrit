.class public abstract Lo/copyStream$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/copyStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "extraCallback"
.end annotation


# static fields
.field private static final zza:Lo/getFarmBackgroundImage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lo/getFarmBackgroundImage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "PhoneAuthProvider"

    invoke-direct {v0, v2, v1}, Lo/getFarmBackgroundImage;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/copyStream$extraCallback;->zza:Lo/getFarmBackgroundImage;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCodeAutoRetrievalTimeOut(Ljava/lang/String;)V
    .locals 2

    .line 3
    sget-object p1, Lo/copyStream$extraCallback;->zza:Lo/getFarmBackgroundImage;

    .line 1040
    iget-object v0, p1, Lo/getFarmBackgroundImage;->onPostMessage:Ljava/lang/String;

    .line 1054
    iget-object p1, p1, Lo/getFarmBackgroundImage;->extraCallback:Ljava/lang/String;

    const-string v1, "Sms auto retrieval timed-out."

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1040
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCodeSent(Ljava/lang/String;Lo/copyStream$onMessageChannelReady;)V
    .locals 0

    return-void
.end method

.method public abstract onVerificationCompleted(Lo/flushOrLog;)V
.end method

.method public abstract onVerificationFailed(Lcom/google/firebase/FirebaseException;)V
.end method
