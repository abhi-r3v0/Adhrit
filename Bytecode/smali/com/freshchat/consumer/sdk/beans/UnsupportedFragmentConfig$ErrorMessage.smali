.class public Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorMessage"
.end annotation


# instance fields
.field private contentType:Ljava/lang/String;

.field private errorCode:J

.field private errorMessage:Ljava/lang/String;

.field final synthetic this$0:Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;->this$0:Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;->errorCode:J

    return-wide v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;->errorMessage:Ljava/lang/String;

    return-object v0
.end method
