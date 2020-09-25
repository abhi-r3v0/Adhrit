.class public abstract Lin/juspay/hypersdk/core/PaymentConstants$SubCategory$Action;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/hypersdk/core/PaymentConstants$SubCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Action"
.end annotation


# static fields
.field public static final SYSTEM:Ljava/lang/String; = "system"

.field public static final USER:Ljava/lang/String; = "user"


# instance fields
.field final synthetic this$1:Lin/juspay/hypersdk/core/PaymentConstants$SubCategory;


# direct methods
.method public constructor <init>(Lin/juspay/hypersdk/core/PaymentConstants$SubCategory;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/PaymentConstants$SubCategory$Action;->this$1:Lin/juspay/hypersdk/core/PaymentConstants$SubCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
