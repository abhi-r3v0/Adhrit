.class public abstract Lin/juspay/hypersdk/core/PaymentConstants$LogCategory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/hypersdk/core/PaymentConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "LogCategory"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final API_CALL:Ljava/lang/String; = "api_call"

.field public static final CONTEXT:Ljava/lang/String; = "context"

.field public static final LIFECYCLE:Ljava/lang/String; = "lifecycle"


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/PaymentConstants;


# direct methods
.method public constructor <init>(Lin/juspay/hypersdk/core/PaymentConstants;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/PaymentConstants$LogCategory;->this$0:Lin/juspay/hypersdk/core/PaymentConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
