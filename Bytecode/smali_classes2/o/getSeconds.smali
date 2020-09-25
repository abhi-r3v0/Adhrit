.class public final Lo/getSeconds;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/setDatabaseUrl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p1

    .line 7
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->onNavigationEvent(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, v3

    move-object v7, v6

    move-object v9, v7

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v20, 0x0

    .line 24
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 25
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->extraCallback(Landroid/os/Parcel;)I

    move-result v2

    .line 26
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->onNavigationEvent(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 75
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ICustomTabsCallback(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 73
    :pswitch_0
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->onMessageChannelReady(Landroid/os/Parcel;I)Z

    move-result v20

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getInterfaceDescriptor(Landroid/os/Parcel;I)[B

    move-result-object v19

    goto :goto_0

    .line 66
    :pswitch_2
    sget-object v3, Lo/setDatabaseUrl$ICustomTabsCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 67
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->extraCallback(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lo/setDatabaseUrl$ICustomTabsCallback;

    goto :goto_0

    .line 63
    :pswitch_3
    sget-object v3, Lo/setDatabaseUrl$onPostMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 64
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->extraCallback(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lo/setDatabaseUrl$onPostMessage;

    goto :goto_0

    .line 60
    :pswitch_4
    sget-object v3, Lo/setDatabaseUrl$onNavigationEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->extraCallback(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lo/setDatabaseUrl$onNavigationEvent;

    goto :goto_0

    .line 57
    :pswitch_5
    sget-object v3, Lo/setDatabaseUrl$onTransact;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->extraCallback(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lo/setDatabaseUrl$onTransact;

    goto :goto_0

    .line 54
    :pswitch_6
    sget-object v3, Lo/setDatabaseUrl$newSession;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 55
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->extraCallback(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lo/setDatabaseUrl$newSession;

    goto :goto_0

    .line 51
    :pswitch_7
    sget-object v3, Lo/setDatabaseUrl$getInterfaceDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 52
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->extraCallback(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lo/setDatabaseUrl$getInterfaceDescriptor;

    goto :goto_0

    .line 48
    :pswitch_8
    sget-object v3, Lo/setDatabaseUrl$onRelationshipValidationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->extraCallback(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lo/setDatabaseUrl$onRelationshipValidationResult;

    goto :goto_0

    .line 45
    :pswitch_9
    sget-object v3, Lo/setDatabaseUrl$ICustomTabsCallback$Stub;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->extraCallback(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lo/setDatabaseUrl$ICustomTabsCallback$Stub;

    goto :goto_0

    .line 42
    :pswitch_a
    sget-object v3, Lo/setDatabaseUrl$asBinder;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 43
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->extraCallback(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lo/setDatabaseUrl$asBinder;

    goto :goto_0

    .line 39
    :pswitch_b
    sget-object v3, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ICustomTabsCallback(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, [Landroid/graphics/Point;

    goto/16 :goto_0

    .line 37
    :pswitch_c
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->extraCallback(Landroid/os/Parcel;I)I

    move-result v8

    goto/16 :goto_0

    .line 34
    :pswitch_d
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->newSession(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 31
    :pswitch_e
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->newSession(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 28
    :pswitch_f
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->extraCallback(Landroid/os/Parcel;I)I

    move-result v5

    goto/16 :goto_0

    .line 77
    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->mayLaunchUrl(Landroid/os/Parcel;I)V

    .line 78
    new-instance v0, Lo/setDatabaseUrl;

    move-object v4, v0

    invoke-direct/range {v4 .. v20}, Lo/setDatabaseUrl;-><init>(ILjava/lang/String;Ljava/lang/String;I[Landroid/graphics/Point;Lo/setDatabaseUrl$asBinder;Lo/setDatabaseUrl$ICustomTabsCallback$Stub;Lo/setDatabaseUrl$onRelationshipValidationResult;Lo/setDatabaseUrl$getInterfaceDescriptor;Lo/setDatabaseUrl$newSession;Lo/setDatabaseUrl$onTransact;Lo/setDatabaseUrl$onNavigationEvent;Lo/setDatabaseUrl$onPostMessage;Lo/setDatabaseUrl$ICustomTabsCallback;[BZ)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 4
    new-array p1, p1, [Lo/setDatabaseUrl;

    return-object p1
.end method
