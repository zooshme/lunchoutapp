<?php

class datasourcelocations extends SectionDatasource
{
    public $dsParamROOTELEMENT = 'locations';
    public $dsParamORDER = 'desc';
    public $dsParamPAGINATERESULTS = 'no';
    public $dsParamLIMIT = '20';
    public $dsParamSTARTPAGE = '1';
    public $dsParamREDIRECTONEMPTY = 'no';
    public $dsParamREDIRECTONFORBIDDEN = 'no';
    public $dsParamREDIRECTONREQUIRED = 'no';
    public $dsParamSORT = 'system:id';
    public $dsParamHTMLENCODE = 'no';
    public $dsParamASSOCIATEDENTRYCOUNTS = 'no';

    public $dsParamFILTERS = array(
        '36' => '{$ds-restaurants.system-id}',
    );

    public $dsParamINCLUDEDELEMENTS = array(
        'name',
        'street-address',
        'town-city',
        'country',
        'restaurant',
        'postcode',
        'map'
    );

    public function __construct($env = null, $process_params = true)
    {
        parent::__construct($env, $process_params);
        $this->_dependencies = array('$ds-restaurants.system-id');
    }

    public function about()
    {
        return array(
            'name' => 'Locations',
            'author' => array(
                'name' => 'Ovidiu Spatacian-Tarnu',
                'website' => 'http://lunchout.local',
                'email' => 'contact@zoosh.me'),
            'version' => 'Symphony 2.7.6',
            'release-date' => '2018-06-02T16:28:41+00:00'
        );
    }

    public function getSource()
    {
        return '9';
    }

    public function allowEditorToParse()
    {
        return true;
    }

    public function execute(array &$param_pool = null)
    {
        $result = new XMLElement($this->dsParamROOTELEMENT);

        try {
            $result = parent::execute($param_pool);
        } catch (FrontendPageNotFoundException $e) {
            // Work around. This ensures the 404 page is displayed and
            // is not picked up by the default catch() statement below
            FrontendPageNotFoundExceptionHandler::render($e);
        } catch (Exception $e) {
            $result->appendChild(new XMLElement('error',
                General::wrapInCDATA($e->getMessage() . ' on ' . $e->getLine() . ' of file ' . $e->getFile())
            ));
            return $result;
        }

        if ($this->_force_empty_result) {
            $result = $this->emptyXMLSet();
        }

        if ($this->_negate_result) {
            $result = $this->negateXMLSet();
        }

        return $result;
    }
}