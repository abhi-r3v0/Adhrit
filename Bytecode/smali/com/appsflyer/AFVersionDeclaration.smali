.class public Lcom/appsflyer/AFVersionDeclaration;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static googleSdkIdentifier:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 1

    const-string v0, "!SDK-VERSION-STRING!:com.appsflyer:af-android-sdk:5.4.1"

    .line 16
    sput-object v0, Lcom/appsflyer/AFVersionDeclaration;->googleSdkIdentifier:Ljava/lang/String;

    return-void
.end method
