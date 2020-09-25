.class Lcom/google/firebase/crashlytics/internal/common/MetaDataStore$1;
.super Lorg/json/JSONObject;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->userDataToJson(Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$userData:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore$1;->val$userData:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 140
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore$1;->val$userData:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->getUserId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
