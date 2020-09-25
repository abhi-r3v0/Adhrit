.class public final Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData$onMessageChannelReady;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 37

    move-object/from16 v0, p1

    const-string v1, "in"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;

    move-object v12, v2

    goto :goto_0

    :cond_0
    move-object v12, v11

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;

    move-object v13, v2

    goto :goto_1

    :cond_1
    move-object v13, v11

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-eqz v2, :cond_3

    sget-object v15, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$RequiredData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$RequiredData;

    invoke-virtual {v14, v15}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    move-object v14, v11

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;

    move-object/from16 v16, v2

    goto :goto_3

    :cond_4
    move-object/from16 v16, v11

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;

    move-object/from16 v17, v2

    goto :goto_4

    :cond_5
    move-object/from16 v17, v11

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;

    move-object/from16 v19, v2

    goto :goto_5

    :cond_6
    move-object/from16 v19, v11

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/16 v20, 0x1

    const/16 v21, 0x0

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_7

    :cond_8
    move-object/from16 v22, v11

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;

    move-object/from16 v24, v2

    goto :goto_8

    :cond_9
    move-object/from16 v24, v11

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;

    move-object/from16 v25, v2

    goto :goto_9

    :cond_a
    move-object/from16 v25, v11

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;

    move-object/from16 v26, v2

    goto :goto_a

    :cond_b
    move-object/from16 v26, v11

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;

    move-object/from16 v27, v2

    goto :goto_b

    :cond_c
    move-object/from16 v27, v11

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;

    move-object/from16 v28, v2

    goto :goto_c

    :cond_d
    move-object/from16 v28, v11

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_d

    :cond_e
    const/16 v20, 0x0

    :goto_d
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v29, v2

    goto :goto_e

    :cond_f
    move-object/from16 v29, v11

    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;

    move-object/from16 v30, v2

    goto :goto_f

    :cond_10
    move-object/from16 v30, v11

    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;

    move-object/from16 v31, v2

    goto :goto_10

    :cond_11
    move-object/from16 v31, v11

    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;

    move-object/from16 v32, v2

    goto :goto_11

    :cond_12
    move-object/from16 v32, v11

    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    sget-object v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;

    move-object/from16 v33, v2

    goto :goto_12

    :cond_13
    move-object/from16 v33, v11

    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v34, v2

    goto :goto_13

    :cond_14
    move-object/from16 v34, v11

    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;

    move-object/from16 v35, v2

    goto :goto_14

    :cond_15
    move-object/from16 v35, v11

    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;

    move-object/from16 v36, v2

    goto :goto_15

    :cond_16
    move-object/from16 v36, v11

    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;

    goto :goto_16

    :cond_17
    move-object v0, v11

    :goto_16
    move-object v2, v1

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v23

    move-object/from16 v21, v24

    move-object/from16 v22, v25

    move-object/from16 v23, v26

    move-object/from16 v24, v27

    move-object/from16 v25, v28

    move-object/from16 v26, v29

    move-object/from16 v27, v30

    move-object/from16 v28, v31

    move-object/from16 v29, v32

    move-object/from16 v30, v33

    move-object/from16 v31, v34

    move-object/from16 v32, v35

    move-object/from16 v33, v36

    move-object/from16 v34, v0

    invoke-direct/range {v2 .. v34}, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$CkycData;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;Ljava/util/List;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;ILcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$MandateDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarFillDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarCaptcha;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AadhaarOtp;Ljava/lang/Boolean;Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;Ljava/lang/Double;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BankDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$DisbursalDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ErrorObject;)V

    return-object v1
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    return-object p1
.end method
