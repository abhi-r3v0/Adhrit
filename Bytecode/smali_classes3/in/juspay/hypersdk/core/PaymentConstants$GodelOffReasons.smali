.class public abstract Lin/juspay/hypersdk/core/PaymentConstants$GodelOffReasons;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/hypersdk/core/PaymentConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "GodelOffReasons"
.end annotation


# static fields
.field public static final CONFIG_DOWNLOAD_FAILED:Ljava/lang/String; = "CONFIG_DOWNLOAD_FAILED"

.field public static final FEATURE_DISABLED:Ljava/lang/String; = "FEATURE_DISABLED"

.field public static final JS_FILES_CORRUPTED:Ljava/lang/String; = "JS_FILES_CORRUPTED"

.field public static final LOWER_ANDROID_OS:Ljava/lang/String; = "LOWER_ANDROID_OS"

.field public static final LOW_ON_MEMORY:Ljava/lang/String; = "LOW_ON_MEMORY"

.field public static final ON_GODEL_EXCEPTION:Ljava/lang/String; = "ON_GODEL_EXCEPTION"

.field public static final ON_GODEL_EXCEPTION_STICKINESS:Ljava/lang/String; = "ON_GODEL_EXCEPTION_STICKINESS"

.field public static final REMOTES_KEY_NOT_FOUND_IN_CONFIG:Ljava/lang/String; = "REMOTES_KEY_NOT_FOUND_IN_CONFIG"

.field public static final TELEPHONY_NOT_FOUND:Ljava/lang/String; = "TELEPHONY_NOT_FOUND"

.field public static final WEBLAB_KEY_NOT_FOUND_IN_CONFIG:Ljava/lang/String; = "WEBLAB_KEY_NOT_FOUND_IN_CONFIG"


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/PaymentConstants;


# direct methods
.method public constructor <init>(Lin/juspay/hypersdk/core/PaymentConstants;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/PaymentConstants$GodelOffReasons;->this$0:Lin/juspay/hypersdk/core/PaymentConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
