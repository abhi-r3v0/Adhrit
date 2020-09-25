.class public final Lo/OrderPaymentJsonAdapter$extraCallback;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OrderPaymentJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# static fields
.field public static final common_full_open_on_phone:I = 0x7f0801c9

.field public static final common_google_signin_btn_icon_dark:I = 0x7f0801ca

.field public static final common_google_signin_btn_icon_dark_focused:I = 0x7f0801cb

.field public static final common_google_signin_btn_icon_dark_normal:I = 0x7f0801cc

.field public static final common_google_signin_btn_icon_dark_normal_background:I = 0x7f0801cd

.field public static final common_google_signin_btn_icon_disabled:I = 0x7f0801ce

.field public static final common_google_signin_btn_icon_light:I = 0x7f0801cf

.field public static final common_google_signin_btn_icon_light_focused:I = 0x7f0801d0

.field public static final common_google_signin_btn_icon_light_normal:I = 0x7f0801d1

.field public static final common_google_signin_btn_icon_light_normal_background:I = 0x7f0801d2

.field public static final common_google_signin_btn_text_dark:I = 0x7f0801d3

.field public static final common_google_signin_btn_text_dark_focused:I = 0x7f0801d4

.field public static final common_google_signin_btn_text_dark_normal:I = 0x7f0801d5

.field public static final common_google_signin_btn_text_dark_normal_background:I = 0x7f0801d6

.field public static final common_google_signin_btn_text_disabled:I = 0x7f0801d7

.field public static final common_google_signin_btn_text_light:I = 0x7f0801d8

.field public static final common_google_signin_btn_text_light_focused:I = 0x7f0801d9

.field public static final common_google_signin_btn_text_light_normal:I = 0x7f0801da

.field public static final common_google_signin_btn_text_light_normal_background:I = 0x7f0801db

.field public static final googleg_disabled_color_18:I = 0x7f080249

.field public static final googleg_standard_color_18:I = 0x7f08024a

.field public static final onPostMessage:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3000
    new-instance v0, Lo/OrderPaymentJsonAdapter$extraCallback;

    invoke-direct {v0}, Lo/OrderPaymentJsonAdapter$extraCallback;-><init>()V

    sput-object v0, Lo/OrderPaymentJsonAdapter$extraCallback;->onPostMessage:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 2000
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "UpdateListenerExecutor"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
