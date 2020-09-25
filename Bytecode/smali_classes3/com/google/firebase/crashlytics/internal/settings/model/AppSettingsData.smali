.class public Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final STATUS_ACTIVATED:Ljava/lang/String; = "activated"

.field public static final STATUS_CONFIGURED:Ljava/lang/String; = "configured"

.field public static final STATUS_NEW:Ljava/lang/String; = "new"


# instance fields
.field public final bundleId:Ljava/lang/String;

.field public final nativeReportUploadVariant:I

.field public final ndkReportsUrl:Ljava/lang/String;

.field public final organizationId:Ljava/lang/String;

.field public final reportUploadVariant:I

.field public final reportsUrl:Ljava/lang/String;

.field public final status:Ljava/lang/String;

.field public final updateRequired:Z

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->status:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->url:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->reportsUrl:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->ndkReportsUrl:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->bundleId:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->organizationId:Ljava/lang/String;

    .line 49
    iput-boolean p7, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->updateRequired:Z

    .line 50
    iput p8, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->reportUploadVariant:I

    .line 51
    iput p9, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->nativeReportUploadVariant:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    .line 56
    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method
